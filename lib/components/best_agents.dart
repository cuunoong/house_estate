import 'package:flutter/material.dart';
import 'package:house_estate/models/agent.dart';

var agents = [
  Agent('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
      'Satthu', 1902),
  Agent('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
      'Satthu', 1902),
  Agent('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
      'Satthu', 1902),
  Agent('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
      'Satthu', 1902),
];

class BestAgents extends StatelessWidget {
  const BestAgents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Text(
            'Best Agents',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF151619)),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            height: 120,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24, right: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => AgentItem(
                      agent: agents[index],
                    )),
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 16,
                    )),
                itemCount: agents.length))
      ],
    );
  }
}

class AgentItem extends StatelessWidget {
  final Agent agent;
  const AgentItem({super.key, required this.agent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 90,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Container(
          height: 40,
          width: 40,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Image.network(agent.image),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          agent.name,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF151619)),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          '${agent.soldCount} sold',
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Color(0xFF6B6978)),
        )
      ]),
    );
  }
}
